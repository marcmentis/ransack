# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Facility.create!(name: 'Pilgrim')

ForSelect.create!(facility_id: 10000, code: 'ward', value: '81/101', text: '81/101', option_order: 1, grouper: 'bld81')
ForSelect.create!(facility_id: 10000, code: 'ward', value: '81/102', text: '81/102', option_order: 2, grouper: 'bld81')
ForSelect.create!(facility_id: 10000, code: 'ward', value: '81/201', text: '81/201', option_order: 3, grouper: 'bld81')
ForSelect.create!(facility_id: 10000, code: 'ward', value: '81/202', text: '81/202', option_order: 4, grouper: 'bld81')
ForSelect.create!(facility_id: 10000, code: 'ward', value: '81/301', text: '81/301', option_order: 5, grouper: 'bld81')
ForSelect.create!(facility_id: 10000, code: 'ward', value: '81/302', text: '81/302', option_order: 6, grouper: 'bld81')
ForSelect.create!(facility_id: 10000, code: 'ward', value: '82/604', text: '82/604', option_order: 7, grouper: 'bld82')
ForSelect.create!(facility_id: 10000, code: 'ward', value: '25/2N', text: '25/2N', option_order: 8, grouper: 'bld25')
ForSelect.create!(facility_id: 10000, code: 'ward', value: '25/2S', text: '25/2S', option_order: 9, grouper: 'bld25')
ForSelect.create!(facility_id: 10000, code: 'ward', value: '25/3N', text: '25/3N', option_order: 10, grouper: 'bld25')
ForSelect.create!(facility_id: 10000, code: 'ward', value: '25/3S', text: '25/2S', option_order: 11, grouper: 'bld25')
ForSelect.create!(facility_id: 10000, code: 'ward', value: 'd/c', text: 'd/c', option_order: 12, grouper: 'd/c')
ForSelect.create!(facility_id: 10000, code: 'drugs_changed', value: '0-2 weeks', text: '0-2 weeks', option_order: 1)
ForSelect.create!(facility_id: 10000, code: 'drugs_changed', value: '2-8 weeks', text: '2-8 weeks', option_order: 2)
ForSelect.create!(facility_id: 10000, code: 'drugs_changed', value: 'Gt 8 weeks', text: 'Gt 8 weeks', option_order: 3)
ForSelect.create!(facility_id: 10000, code: 'group_changed', value: '0-1 month', text: '0-1 month', option_order: 1)
ForSelect.create!(facility_id: 10000, code: 'group_changed', value: '1-3 months', text: '1-3 months', option_order: 2)
ForSelect.create!(facility_id: 10000, code: 'group_changed', value: 'Gt 3 months', text: 'Gt 3 months', option_order: 3)



